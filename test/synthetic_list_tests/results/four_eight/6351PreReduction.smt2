
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (not (is-Nil l3)) )
(assert (and (= l0 Nil) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (is-Nil l3) (= l3 Nil)) )
(assert (and (= l3 l2) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l1 l3) (= l3 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (or (is-Nil l3) (= l2 Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
