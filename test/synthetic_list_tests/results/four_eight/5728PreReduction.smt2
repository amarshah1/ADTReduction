
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
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l2 l2) (= l0 Nil) (is-Cons l3) (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 l3)) )
(assert (not (= l3 l1)) )
(assert (or (= l1 Nil) (is-Cons l1) (= l3 Nil)) )
(check-sat)
