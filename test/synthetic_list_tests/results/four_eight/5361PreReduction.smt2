
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
(assert (and (is-Nil Nil) (is-Cons Nil) (= l2 l0) (= l2 Nil)) )
(assert (not (= l3 l2)) )
(assert (is-Cons l0) )
(assert (= l0 l3) )
(assert (and (is-Cons Nil) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l3 Nil) (= l2 l1)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons l3) )
(check-sat)
