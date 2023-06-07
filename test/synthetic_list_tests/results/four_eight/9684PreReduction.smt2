
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
(assert (and (= l3 Nil) (= l0 Nil) (= l3 l1)) )
(assert (and (= l3 l2) (= l1 Nil) (= l0 Nil)) )
(assert (or (= l3 Nil) (= l3 Nil) (= l2 l3) (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (= l1 l0) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Nil Nil) (is-Cons l0)) )
(assert (= l3 l0) )
(check-sat)
