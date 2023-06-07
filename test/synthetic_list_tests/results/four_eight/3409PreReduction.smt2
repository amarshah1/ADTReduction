
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
(assert (= l1 l3) )
(assert (= l1 Nil) )
(assert (or (= l3 l1) (= l2 Nil) (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (is-Cons l1) (is-Cons Nil) (is-Cons l1)) )
(assert (is-Nil Nil) )
(assert (= l2 l3) )
(assert (is-Cons Nil) )
(check-sat)