
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
(assert (is-Nil l3) )
(assert (not (= l1 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (not (is-Nil l1)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 l0) (is-Nil l0) (is-Nil l3) (= l2 l2)) )
(check-sat)
