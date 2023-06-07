
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
(assert (not (= l1 Nil)) )
(assert (and (is-Cons Nil) (is-Nil l2) (= l0 Nil) (= l3 l0)) )
(assert (and (is-Cons Nil) (= l2 Nil)) )
(assert (not (= l3 l2)) )
(assert (and (= l3 l0) (is-Cons Nil) (= l0 Nil) (= l2 l3)) )
(assert (= l1 Nil) )
(assert (= l3 l3) )
(assert (or (= l1 Nil) (= l1 Nil) (= l0 Nil) (= l1 Nil)) )
(check-sat)
